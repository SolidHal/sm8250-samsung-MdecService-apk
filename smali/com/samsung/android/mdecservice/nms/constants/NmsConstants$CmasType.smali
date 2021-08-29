.class public final enum Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;
.super Ljava/lang/Enum;
.source "NmsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/constants/NmsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CmasType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

.field public static final enum CB_MESSAGE_SENDER_PREFIX:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

.field public static final enum CMAS_MESSAGE_SENDER_PREFIX:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

.field public static final enum CMAS_PROVIDER_ATT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

.field public static final enum CMAS_PROVIDER_CHO:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

.field public static final enum CMAS_PROVIDER_GENERAL:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

.field public static final enum CMAS_PROVIDER_KT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

.field public static final enum CMAS_PROVIDER_LGU:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

.field public static final enum CMAS_PROVIDER_SKT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

.field public static final enum CMAS_PROVIDER_SPR:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

.field public static final enum CMAS_PROVIDER_TFG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

.field public static final enum CMAS_PROVIDER_TMO:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

.field public static final enum CMAS_PROVIDER_USC:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

.field public static final enum CMAS_PROVIDER_VZW:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

.field public static final enum NEW_CMAS_MESSAGE_SENDER_PREFIX:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

.field private static cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const-string v1, "CMAS_PROVIDER_GENERAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_GENERAL:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const-string v1, "CMAS_PROVIDER_TMO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_TMO:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const-string v1, "CMAS_PROVIDER_ATT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_ATT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    .line 4
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const-string v1, "CMAS_PROVIDER_VZW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_VZW:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    .line 5
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const-string v1, "CMAS_PROVIDER_SPR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_SPR:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    .line 6
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const-string v1, "CMAS_PROVIDER_USC"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_USC:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    .line 7
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const-string v1, "CMAS_PROVIDER_CHO"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_CHO:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const-string v1, "CMAS_PROVIDER_TFG"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_TFG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    .line 9
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const-string v1, "CMAS_PROVIDER_SKT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_SKT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    .line 10
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const-string v1, "CMAS_PROVIDER_KT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_KT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    .line 11
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const-string v1, "CMAS_PROVIDER_LGU"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_LGU:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    .line 12
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const-string v1, "CMAS_MESSAGE_SENDER_PREFIX"

    const/16 v13, 0xb

    const-string v14, "#CMAS#"

    invoke-direct {v0, v1, v13, v14}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_MESSAGE_SENDER_PREFIX:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    .line 13
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const-string v1, "NEW_CMAS_MESSAGE_SENDER_PREFIX"

    const/16 v14, 0xc

    const-string v15, "#Emergency Alert#"

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->NEW_CMAS_MESSAGE_SENDER_PREFIX:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    .line 14
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const-string v1, "CB_MESSAGE_SENDER_PREFIX"

    const/16 v15, 0xd

    const-string v14, "CBmessages"

    invoke-direct {v0, v1, v15, v14}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CB_MESSAGE_SENDER_PREFIX:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    .line 15
    sget-object v14, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_GENERAL:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    aput-object v14, v1, v2

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_TMO:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_ATT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_VZW:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_SPR:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_USC:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_CHO:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_TFG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_SKT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_KT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_LGU:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    aput-object v2, v1, v12

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_MESSAGE_SENDER_PREFIX:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    aput-object v2, v1, v13

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->NEW_CMAS_MESSAGE_SENDER_PREFIX:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->$VALUES:[Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, "CmasType"

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->LOG_TAG:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->isCmasProviderInited()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->init()V

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, "CmasType"

    .line 6
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->LOG_TAG:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->prefix:Ljava/lang/String;

    return-void
.end method

.method private static getCMASProvider()Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    return-object v0
.end method

.method public static getCmasServiceCategoryStringId(Ljava/lang/String;)I
    .locals 12

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_SPR:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    const v2, 0x7f0f0034

    const v3, 0x7f0f0035

    const-string v4, "Test"

    const-string v5, "CMASALL"

    const-string v6, "Amber"

    const-string v7, "Severe"

    const-string v8, "Extreme"

    const v9, 0x7f0f00c9

    const-string v10, "Presidential"

    const/4 v11, 0x0

    if-ne v0, v1, :cond_6

    .line 2
    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v2, 0x7f0f0038

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v2, 0x7f0f0036

    goto/16 :goto_2

    .line 4
    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v2, 0x7f0f003a

    goto/16 :goto_2

    .line 5
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v2, 0x7f0f0032

    goto/16 :goto_2

    .line 6
    :cond_3
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    move v2, v3

    goto :goto_2

    .line 7
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v11

    goto :goto_2

    .line 8
    :cond_6
    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_CHO:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_TFG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    if-ne v0, v1, :cond_8

    :cond_7
    move v11, v9

    .line 9
    :cond_8
    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 10
    sget-object p0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_CHO:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    if-eq p0, v0, :cond_a

    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_TFG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    if-ne p0, v0, :cond_9

    goto :goto_1

    :cond_9
    const v2, 0x7f0f0039

    goto :goto_2

    :cond_a
    :goto_1
    move v2, v9

    goto :goto_2

    .line 11
    :cond_b
    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v2, 0x7f0f0037

    goto :goto_2

    .line 12
    :cond_c
    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const v2, 0x7f0f003b

    goto :goto_2

    .line 13
    :cond_d
    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v2, 0x7f0f0033

    goto :goto_2

    .line 14
    :cond_e
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_0

    .line 15
    :cond_f
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    :goto_2
    return v2
.end method

.method private init()V
    .locals 2

    const-string v0, "com.sec.android.app.CscFeatureTagMessage"

    .line 1
    invoke-static {v0}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "TAG_CSCFEATURE_MESSAGE_CMASOPERATOR"

    .line 2
    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, "us-vzw"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_VZW:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    goto/16 :goto_0

    :cond_1
    const-string v1, "us-usc"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_USC:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    goto/16 :goto_0

    :cond_2
    const-string v1, "us-spr"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_SPR:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    goto/16 :goto_0

    :cond_3
    const-string v1, "us-att-lte"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_ATT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    goto/16 :goto_0

    :cond_4
    const-string v1, "us-att-3g"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_ATT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    goto/16 :goto_0

    :cond_5
    const-string v1, "us-att"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_ATT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    goto :goto_0

    :cond_6
    const-string v1, "us-tmo"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_TMO:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    goto :goto_0

    :cond_7
    const-string v1, "la-cho"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 19
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_CHO:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    goto :goto_0

    :cond_8
    const-string v1, "la-tfg"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 21
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_TFG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    goto :goto_0

    :cond_9
    const-string v1, "skt"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 23
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_SKT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    goto :goto_0

    :cond_a
    const-string v1, "kt"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 25
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_KT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    goto :goto_0

    :cond_b
    const-string v1, "lgu"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 27
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_LGU:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    goto :goto_0

    :cond_c
    const-string v1, "kor_open"

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 29
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_SKT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    goto :goto_0

    .line 30
    :cond_d
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_GENERAL:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    :cond_e
    :goto_0
    return-void
.end method

.method private isCmasProviderInited()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->cmasProvider:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isKORCMASFeatureEnabled()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->getCMASProvider()Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_SKT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->getCMASProvider()Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_KT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    if-eq v0, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->getCMASProvider()Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->CMAS_PROVIDER_LGU:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->$VALUES:[Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$CmasType;

    return-object v0
.end method
