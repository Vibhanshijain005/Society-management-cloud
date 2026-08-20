import React, { useState } from 'react';
import { login, verifyOtp } from '../redux/slice/authSlice';
import { useDispatch, useSelector } from 'react-redux';
import { useNavigate } from 'react-router-dom';

const Login = () => {
  const dispatch = useDispatch();
  const { loading } = useSelector((state) => state.auth);
  const navigate = useNavigate();
  const [formData, setFormData] = useState({
    email: '',
    password: '',
  });
  const [otp, setOtp] = useState('');
  const [otpStep, setOtpStep] = useState(false);
  const [localError, setLocalError] = useState(null);
  const [localMessage, setLocalMessage] = useState(null);

  const handleChange = (e) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value,
    });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLocalError(null);
    setLocalMessage(null);

    dispatch(login({ formData }))
      .unwrap()
      .then((res) => {
        setLocalMessage(res.message || 'OTP sent to your registered email!');
        setOtpStep(true);
      })
      .catch((err) => {
        setLocalError(err?.message || 'Invalid credentials. Please try again.');
      });
  };

  const handleOtpSubmit = async (e) => {
    e.preventDefault();
    setLocalError(null);
    setLocalMessage(null);

    dispatch(verifyOtp({ email: formData.email, otp }))
      .unwrap()
      .then(() => {
        setLocalMessage('Login successful!');
        setTimeout(() => navigate('/dashboard'), 1000);
      })
      .catch((err) => {
        setLocalError(err?.message || 'Invalid or expired OTP.');
      });
  };

  return (
    <div className="min-h-screen flex items-center justify-center bg-slate-50 p-8">
      <div className="w-full max-w-md bg-white rounded-lg shadow p-8">
        <div className="mb-8 flex items-center gap-2">
          <div className="w-10 h-10 bg-green-700 rounded-md flex items-center justify-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="white" strokeWidth="2.5" strokeLinecap="round" strokeLinejoin="round">
              <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
              <polyline points="9 22 9 12 15 12 15 22"></polyline>
            </svg>
          </div>
          <span className="font-bold text-xl">SMS Portal</span>
        </div>

        <div className="mb-8">
          <h1 className="text-3xl font-bold mb-1">
            {otpStep ? 'Verify OTP' : 'Sign In'}
          </h1>
          <p className="text-slate-500">
            {otpStep
              ? `Enter the 6-digit code sent to ${formData.email}`
              : 'Access your society management dashboard'}
          </p>
        </div>

        {!otpStep ? (
          <form onSubmit={handleSubmit} className="space-y-5">
            {localError && (
              <div className="bg-red-50 border border-red-200 text-red-600 text-sm p-3 rounded-md">
                {localError}
              </div>
            )}
            {localMessage && (
              <div className="bg-green-50 border border-green-200 text-green-700 text-sm p-3 rounded-md">
                {localMessage}
              </div>
            )}

            <div>
              <label className="block text-xs font-semibold text-slate-500 uppercase mb-2" htmlFor="email">
                Email Address
              </label>
              <input
                id="email"
                name="email"
                type="email"
                required
                className="w-full border border-slate-200 rounded-md px-4 py-3"
                placeholder="name@society.com"
                value={formData.email}
                onChange={handleChange}
              />
            </div>

            <div>
              <div className="flex justify-between items-center mb-2">
                <label className="block text-xs font-semibold text-slate-500 uppercase" htmlFor="password">
                  Password
                </label>
                <a href="#" className="text-xs font-medium text-green-700 hover:underline">
                  Forgot password?
                </a>
              </div>
              <input
                id="password"
                name="password"
                type="password"
                required
                className="w-full border border-slate-200 rounded-md px-4 py-3"
                placeholder="••••••••"
                value={formData.password}
                onChange={handleChange}
              />
            </div>

            <div className="flex items-center">
              <input id="remember" type="checkbox" className="w-4 h-4" />
              <label htmlFor="remember" className="ml-2 text-sm text-slate-600">
                Remember this device
              </label>
            </div>

            <button
              type="submit"
              className="w-full bg-green-700 hover:bg-green-800 text-white py-3 rounded-md font-semibold disabled:opacity-70"
              disabled={loading}
            >
              {loading ? 'Signing In...' : 'Sign In to Portal'}
            </button>
          </form>
        ) : (
          <form onSubmit={handleOtpSubmit} className="space-y-5">
            {localError && (
              <div className="bg-red-50 border border-red-200 text-red-600 text-sm p-3 rounded-md">
                {localError}
              </div>
            )}
            {localMessage && (
              <div className="bg-green-50 border border-green-200 text-green-700 text-sm p-3 rounded-md">
                {localMessage}
              </div>
            )}

            <div>
              <label className="block text-xs font-semibold text-slate-500 uppercase mb-2" htmlFor="otp">
                One-Time Password
              </label>
              <input
                id="otp"
                name="otp"
                type="text"
                required
                maxLength={6}
                inputMode="numeric"
                className="w-full border border-slate-200 rounded-md px-4 py-3 text-center tracking-[0.5em] text-lg font-semibold"
                placeholder="------"
                value={otp}
                onChange={(e) => setOtp(e.target.value.replace(/\D/g, ''))}
              />
            </div>

            <button
              type="submit"
              className="w-full bg-green-700 hover:bg-green-800 text-white py-3 rounded-md font-semibold disabled:opacity-70"
              disabled={loading}
            >
              {loading ? 'Verifying OTP...' : 'Verify OTP'}
            </button>

            <button
              type="button"
              onClick={() => {
                setOtpStep(false);
                setOtp('');
                setLocalError(null);
                setLocalMessage(null);
              }}
              className="w-full text-center text-sm font-medium text-green-700 hover:underline"
            >
              Back to Sign In
            </button>
          </form>
        )}
      </div>
    </div>
  );
};

export default Login;

