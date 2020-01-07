classdef MAD < Algorithms.CDAlg
    properties
        nMADUsed = uint8(255);
    end
    methods
        function obj = MAD(k)
            obj@Algorithms.CDAlg('Multivariate Alteration Detection', ...
                ['Nielsen, Allan & Conradsen, Knut & Simpson, James. (1998). ',...
                'Multivariate Alteration Detection (MAD) and MAF Postprocessing',...
                'in Multispectral, Bitemporal Image Data: ',...
                'New Approaches to Change Detection Studies.',...
                'Remote Sensing of Environment.',...
                '64. 1-19. 10.1016/S0034-4257(97)00162-4. '] ...
                );
            if exist('k', 'var'), obj.nMADUsed=uint8(k); end
        end
        [DI, k] = detectChange(obj, t1, t2);
    end
end