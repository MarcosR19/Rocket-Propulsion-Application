% Given constants
m = 1000;     
c = 500;
v0 = 0;
timeInt = [0 10];
thrustV = [20000 40000 60000 80000];

% Loop through each thrust value and solve using ode 45
hold on
for i = 1:length(thrustV)
    f = thrustV(i);
    [t,v] = ode45(@(t,v) (f - c*v)/m, timeInt, v0);

    % Plot values
    plot(t, v)

    % Report values at each thrust value
    fprintf("When thrust is at %d N, velocity after 10 s is %.2f m/s\n",f,v(end));
end
grid on
title('Rocket Propulsion Application')
xlabel('Time(s)')
ylabel('Velocity(m/s)')