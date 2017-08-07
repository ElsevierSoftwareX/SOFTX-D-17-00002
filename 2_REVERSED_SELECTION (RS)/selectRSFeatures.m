function [RS] = selectRSFeatures(zig,ii)

    k=ii;
    directoryres = dir(strcat('*.bmp'));
    resAd = directoryres(k).name;

    %%FEATURE SELECTION%%

    RS=zig;

    RSzig128 = RS(1,16383:-1:1);
    RSzig64  = RS(1,16383:-1:12288);
    RSzig32  = RS(1,16383:-1:15360);
    RSzig16  = RS(1,16383:-1:16128);
    RSzig8   = RS(1,16383:-1:16320);
    RSzig4   = RS(1,16383:-1:16369);
    RSzig2   = RS(1,16383:-1:16380);

    %%SAVING FEATURES%%

    filename128 = sprintf('%s_%s.mat', resAd(1:end-4),'RS128x128');
    filename64  = sprintf('%s_%s.mat', resAd(1:end-4),'RS64x64');
    filename32  = sprintf('%s_%s.mat', resAd(1:end-4),'RS32x32');
    filename16  = sprintf('%s_%s.mat', resAd(1:end-4),'RS16x16');
    filename8   = sprintf('%s_%s.mat', resAd(1:end-4),'RS8x8');
    filename4   = sprintf('%s_%s.mat', resAd(1:end-4),'RS4x4');
    filename2   = sprintf('%s_%s.mat', resAd(1:end-4),'RS2x2');

    save(filename128,'RSzig128');
    save(filename64,'RSzig64');
    save(filename32,'RSzig32');
    save(filename16,'RSzig16');
    save(filename8,'RSzig8');
    save(filename4,'RSzig4');
    save(filename2,'RSzig2');

end


