.class public final synthetic Lcom/samsung/android/cmcsettings/view/dialogFragments/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/f;->b:Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/f;->b:Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method
