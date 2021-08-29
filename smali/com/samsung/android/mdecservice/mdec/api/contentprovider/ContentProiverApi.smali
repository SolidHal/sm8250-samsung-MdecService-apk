.class public Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi;
.super Landroid/content/ContentProvider;
.source "ContentProiverApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi$AppType;
    }
.end annotation


# static fields
.field public static final CMC_ACTIVATION:Ljava/lang/String; = "cmc_activation"

.field public static final ERROR_REASON:Ljava/lang/String; = "error_reason"

.field public static final INVALID_REQUEST:Ljava/lang/String; = "invalid_request"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final METHOD_GET_CMC_ACTIVATION:Ljava/lang/String; = "get_cmc_activation"

.field public static final METHOD_RUN_CMC_SETTING:Ljava/lang/String; = "run_cmc_setting"

.field public static final RESULT:Ljava/lang/String; = "result"

.field public static final RESULT_FAIL:I = 0x0

.field public static final RESULT_OK:I = 0x1


# instance fields
.field final allowedPkgs:[Ljava/lang/String;

.field final allowedSignatures:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/pm/Signature;

    .line 2
    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "308201dd30820146020101300d06092a864886f70d010105050030373116301406035504030c0d416e64726f69642044656275673110300e060355040a0c07416e64726f6964310b3009060355040613025553301e170d3137303932363039323830375a170d3437303931393039323830375a30373116301406035504030c0d416e64726f69642044656275673110300e060355040a0c07416e64726f6964310b300906035504061302555330819f300d06092a864886f70d010101050003818d003081890281810092631440e4397300b46ecabb3551d4985bb6a6018ed146f547a36c475666c522d032c38b03e6ef9595290bf34a1a357e332268d10c9edaf217ea50646c657b0168bfe21f24ec96eb615f83e78a66bb9cbce3d9fc22e4df3a22efb2fb5cb58d71c8a0432405048d26e849e9a82eb006f5cd6dd5468888f6ad835d26eb2d72d82b0203010001300d06092a864886f70d01010505000381810071a5e25416f48f660701d6f7ecf99f19cf7a2ee1878d56d0b1cd027fbb6d55d72430d8b35caebf22fabe3b7df40f1adc55f7a6d20f1ce1f7f7531e9abf68f903a3e8bb80322454a55b32f6d8aa17ee75dfc61fcdd8909878d94403d571c0cc16ac5d61772b147012840d674a99177193396c6c1ab735065182951ce001bc3144"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "3082030b308201f3a003020102020427ba3599300d06092a864886f70d01010b050030363120301e060355040b131750726f64756374506c616e6e696e674469766973696f6e3112301006035504031309534b54656c65636f6d301e170d3133303432353034313334345a170d3433303431383034313334345a30363120301e060355040b131750726f64756374506c616e6e696e674469766973696f6e3112301006035504031309534b54656c65636f6d30820122300d06092a864886f70d01010105000382010f003082010a0282010100bc1ee71062800dc6ea0aad37ac18de0f5c827a90f64c8ec8c61718e58a675d80e81016872f1f1da06e0f05f8423e0037727adefbd043993244822539158d47b521b5d883a151523ee2f4a2fdd19ac364f29a93c1e05159a8b90902968237edf5931e20ca4d80a76bd5f699430d9dfd57387b49063860fe567780bd7e7b6206fef3e030cd1ec39c324cf8914b1c3b1cf1142f16a18bcf401c87ec1253fb1161cc5b97677973c730e574c54ade32ace9693d36be430fc1191ab42938a54d0b36b11e474a2b859682d21aa78ee1e3d023e738ac704edcdc710e16b267985e65f3647c4b040110fa2c03f91ad4055b2a740dcfc1cab708492b9575902a0f97b807f50203010001a321301f301d0603551d0e0416041402ff5ede4a1a2017d26f1d3e6079083f8ab63dc6300d06092a864886f70d01010b050003820101007f10b1b880d054df5bcaab1204071ee9cc554601b431a886e318a5a600a73c4a0300e4c27d09ddea81d2c9f858baf83dc517b68e760dda559fb2500fbd64c308fc367bc038e39d53794612023b08f759dcf13b7d74002e680a1f661bed3f0aa138325345318ee80566bbe4263d42317fd2ff0746ab78d160dc2af871297f2110fc6db4b270a6b0e45b85de411cb02b881721c655127f1e7678af0c96d7621a1822d9931afe5f1e6bfae05f88a800c0783e2c4bd98b81e9de14f54ff9561a9f1b13fb00c44ca10d62b8a22a601e536440b7090355212594f2cb48fbe8e136c46c9169784e9faf42a417bdd3603cb652f6c6e49d6c7b836d310cdbc14f111e254c"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi;->allowedSignatures:[Landroid/content/pm/Signature;

    const-string v0, "com.samsung.tesapp"

    const-string v1, "com.skt.prod.dialer"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi;->allowedPkgs:[Ljava/lang/String;

    return-void
.end method

.method private checkSignature(Landroid/content/Context;)Z
    .locals 14

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 3
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 4
    iget-object v5, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi;->allowedPkgs:[Ljava/lang/String;

    array-length v6, v5

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 5
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 6
    sget-object v8, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi;->LOG_TAG:Ljava/lang/String;

    const-string v9, "package check ok"

    invoke-static {v8, v9}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x40

    .line 7
    invoke-virtual {p1, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_1

    .line 8
    sget-object v9, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sing : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v8, v0

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v9, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi;->allowedSignatures:[Landroid/content/pm/Signature;

    array-length v10, v9

    move v11, v0

    :goto_2
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 10
    array-length v13, v8

    if-lez v13, :cond_0

    aget-object v13, v8, v0

    invoke-virtual {v12, v13}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 11
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "validation ok"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "validation fail!!!!!!!"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception p1

    .line 13
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi;->LOG_TAG:Ljava/lang/String;

    const-string v2, "NameNotFoundException validation fail!!!!!!!"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method private static executeCmcActivityInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi$AppType;Z)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "executeCmcActivityInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.intent.action.MAIN"

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x10000

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "android.intent.category.LAUNCHER"

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p4, :cond_3

    const/4 p2, 0x0

    .line 9
    sget-object p4, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi$AppType;->CALL:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi$AppType;

    if-ne p3, p4, :cond_0

    const-string p2, "CALLAPP"

    goto :goto_0

    .line 10
    :cond_0
    sget-object p4, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi$AppType;->MESSAGE:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi$AppType;

    if-ne p3, p4, :cond_1

    const-string p2, "MESSAGEAPP"

    goto :goto_0

    .line 11
    :cond_1
    sget-object p4, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi$AppType;->OTHERS:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi$AppType;

    if-ne p3, p4, :cond_2

    const-string p2, "OTHERAPP"

    :cond_2
    :goto_0
    const-string p3, "extra_reason_cmcopen"

    .line 12
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 14
    :catch_0
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi;->LOG_TAG:Ljava/lang/String;

    const-string p1, "execute activity failed"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .line 1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi;->checkSignature(Landroid/content/Context;)Z

    move-result p3

    const/4 v0, 0x0

    const-string v1, "result"

    if-nez p3, :cond_0

    .line 3
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "error_reason"

    const-string p3, "invalid_request"

    .line 4
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_0
    const-string p3, "get_cmc_activation"

    .line 5
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivationForSkt(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object p1

    .line 7
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmc enabled is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne p1, v1, :cond_1

    move v0, v3

    :cond_1
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p2

    :cond_2
    const-string p3, "run_cmc_setting"

    .line 10
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi$AppType;->OTHERS:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi$AppType;

    const-string v2, "com.samsung.android.mdecservice"

    const-string v4, "com.samsung.android.cmcsettings.view.CMCMainActivity"

    invoke-static {p1, v2, v4, p3, v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi;->executeCmcActivityInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/mdec/api/contentprovider/ContentProiverApi$AppType;Z)Z

    .line 12
    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p2

    .line 13
    :cond_3
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
