
% FIXME: (3) add info header , add class constructor

classdef LCR_harm_result_type

    methods (Access = public, Static)
        function v = get_version()
            v = [1 0 0];
        end
    end

    properties (Access = public)

        % FIXME: (3) Maybe add basic freq
        n double = NaN;
        res double = NaN;
        res_err double = NaN;
        phi double = NaN;
        phi_err double = NaN;

    end

end










