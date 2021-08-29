.class Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$10;
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
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$10;->this$0:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onChange : GlobalDataInfo"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$10;->this$0:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->access$200(Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;)V

    return-void
.end method
