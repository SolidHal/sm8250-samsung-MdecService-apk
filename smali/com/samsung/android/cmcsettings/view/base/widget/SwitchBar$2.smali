.class Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$2;
.super Ljava/lang/Object;
.source "SwitchBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->init()V
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
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$2;->this$0:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "show: !isShowing: run - setTouchDelegate"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$2;->this$0:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    new-instance v1, Landroid/view/TouchDelegate;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$2;->this$0:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    .line 3
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$2;->this$0:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$2;->this$0:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    .line 4
    invoke-virtual {v3}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->getDelegatingView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
