.class public final synthetic Lcom/samsung/android/cmcsettings/view/welcome/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/a;->b:Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/a;->b:Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;->a()V

    return-void
.end method
