.class public final synthetic Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/a;->b:Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;

    iput-boolean p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/a;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/a;->b:Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;

    iget-boolean v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/a;->c:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->b(Z)V

    return-void
.end method
