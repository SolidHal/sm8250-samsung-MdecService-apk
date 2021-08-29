.class public final synthetic Lcom/samsung/android/cmcsettings/settings/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/settings/b;->b:Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/settings/b;->b:Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->a()V

    return-void
.end method
