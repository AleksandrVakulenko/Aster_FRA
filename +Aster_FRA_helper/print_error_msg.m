
% NOTE: now it is a part of +Aster_FRA

% FIXME: upgrade and put in some Fern module

function print_error_msg(ERR, func_name)
arguments
    ERR
    func_name string = []
end
    Stack = ERR.stack;
    if ~isempty(func_name)
        klog.disp(['Error in ' char(func_name) ' function:' newline ...
            '>' newline ERR.message newline '<'], "common", 'orange');
    else
        klog.disp(['Error: ' newline ...
            '>' newline ERR.message newline '<'], "common", 'orange');
    end
    for i = 1:numel(Stack)
        disp(' ')
        klog.disp(['File: ' char(Stack(i).file) newline ...
            'Func: ' Stack(i).name newline ...
            'Line: ' num2str(Stack(i).line)], "common", "orange");
    end
    disp(' ')
end


%% TEST

% clc
% 
% nyan
% disp('safsdfad')
% 
% 
% 
% function nyan()
% try
%     nyan2()
% catch ERR
%     Aster_FRA_helper.print_error_msg(ERR, "nyan")
% end
% 
% 
% end
% 
% 
% 
% function nyan2()
% 
%     A = [1 2 3];
%     A(-2);
% end
