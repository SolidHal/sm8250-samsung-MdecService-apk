.class public final synthetic Lcom/samsung/android/cmcsettings/view/dialogFragments/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;

.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/b;->b:Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/b;->c:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/b;->b:Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;->a(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
