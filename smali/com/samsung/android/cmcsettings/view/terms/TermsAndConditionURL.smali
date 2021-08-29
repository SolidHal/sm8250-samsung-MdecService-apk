.class public Lcom/samsung/android/cmcsettings/view/terms/TermsAndConditionURL;
.super Ljava/lang/Object;
.source "TermsAndConditionURL.java"

# interfaces
.implements Lcom/samsung/android/cmcsettings/view/terms/TermURL;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/terms/TermsAndConditionURL;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/terms/TermsAndConditionURL;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initTnCURLForWelcomeActivity()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://terms.account.samsung.com/contents/legal/"

    const-string v3, "/general.html"

    .line 3
    invoke-interface {p0, v2, v0, v1, v3}, Lcom/samsung/android/cmcsettings/view/terms/TermURL;->getTermUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFinalUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/terms/TermsAndConditionURL;->initTnCURLForWelcomeActivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
