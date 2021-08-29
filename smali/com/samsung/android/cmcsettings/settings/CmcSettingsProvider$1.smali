.class Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider$1;
.super Landroid/os/Handler;
.source "CmcSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider$1;->this$0:Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "mdec/CmcSettingsProvider"

    const-string v0, "No SIM card, show toast"

    .line 2
    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider$1;->this$0:Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x103012b

    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0f00a4

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
