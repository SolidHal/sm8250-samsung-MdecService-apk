.class public final synthetic Lcom/samsung/android/cmcsettings/settings/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/settings/a;->b:Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;

    iput-object p2, p0, Lcom/samsung/android/cmcsettings/settings/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/cmcsettings/settings/a;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/settings/a;->b:Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/settings/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/settings/a;->d:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
