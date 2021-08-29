.class public Lcom/samsung/android/cmcsettings/view/terms/TermURLFactory;
.super Ljava/lang/Object;
.source "TermURLFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTermUrl(Ljava/lang/String;)Lcom/samsung/android/cmcsettings/view/terms/TermURL;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "PrivacyPolicyURL"

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    new-instance p0, Lcom/samsung/android/cmcsettings/view/terms/PrivacyPolicyURL;

    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/terms/PrivacyPolicyURL;-><init>()V

    return-object p0

    :cond_1
    const-string v1, "TermsAndConditionURL"

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 4
    new-instance p0, Lcom/samsung/android/cmcsettings/view/terms/TermsAndConditionURL;

    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/terms/TermsAndConditionURL;-><init>()V

    return-object p0

    :cond_2
    return-object v0
.end method
