.class public final Lh0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li0/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li0/i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Landroid/content/res/AssetManager;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Li0/i;

    invoke-direct {v0}, Li0/i;-><init>()V

    iput-object v0, p0, Lh0/a;->a:Li0/i;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lh0/a;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lh0/a;->c:Ljava/util/HashMap;

    const-string v0, ".ttf"

    iput-object v0, p0, Lh0/a;->e:Ljava/lang/String;

    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    const-string p1, "LottieDrawable must be inside of a view for images to work."

    invoke-static {p1}, Lp0/c;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lh0/a;->d:Landroid/content/res/AssetManager;

    return-void
.end method
