
% FIXME: (3) add info header , add class constructor

classdef LCR_result_type

    methods (Access = public, Static)
        function v = get_version()
            v = [1 0 0];
        end
    end

    methods (Access = public)
        function obj = LCR_result_type(source)
            obj.source = source;
        end
    end

    properties (Access = public)

        freq double = NaN; % Measurment frequency
        gen_amp double = NaN; % Measurment voltage level
        gen_dc double = NaN; % Measurment DC bias level

        res_abs double = NaN; % Resistance absolute value
        res_abs_err double = NaN; % Error of resistance absolute value

        phi double = NaN; % Resistance phase
        phi_err double = NaN; % Error of resistance phase

        harm Aster_FRA.LCR_harm_result_type;% Resistance harmonics struct

        cap_par double = NaN; % Cap value for result estimation

        current double = NaN;
        current_error double = NaN;
        voltage double = NaN;
        voltage_error double = NaN;

        r_scale double = NaN; % V to Amp scale coefficient
        range_n double = NaN; % The range number of FRA device used for this measurement

        source string = ""; % FIXME (2) make enum or class
        quality double = NaN; % NOTE: 0 - 100 scale quality
    end

end










