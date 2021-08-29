.class Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$1;
.super Landroid/database/ContentObserver;
.source "SettingsInternalApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$1;->this$0:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCmcActivationChangeObserver : selfChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$1;->this$0:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/cmc_activation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->notifyChange(Landroid/net/Uri;)V

    return-void
.end method
