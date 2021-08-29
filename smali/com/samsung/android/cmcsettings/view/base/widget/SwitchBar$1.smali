.class Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$1;
.super Ljava/lang/Object;
.source "SwitchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$1;->this$0:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$1;->this$0:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->access$000(Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$1;->this$0:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->access$000(Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$1;->this$0:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->access$000(Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$1;->this$0:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->access$000(Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method
