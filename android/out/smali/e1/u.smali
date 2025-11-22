.class public final Le1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/w;
.implements Lx0/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx0/w<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lx0/s;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;

.field public final b:Lx0/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/w<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lx0/w;)V
    .locals 0
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lx0/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lx0/w<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lq1/l;->b(Ljava/lang/Object;)V

    iput-object p1, p0, Le1/u;->a:Landroid/content/res/Resources;

    invoke-static {p2}, Lq1/l;->b(Ljava/lang/Object;)V

    iput-object p2, p0, Le1/u;->b:Lx0/w;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Le1/u;->b:Lx0/w;

    invoke-interface {v1}, Lx0/w;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Le1/u;->a:Landroid/content/res/Resources;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Le1/u;->b:Lx0/w;

    invoke-interface {v0}, Lx0/w;->getSize()I

    move-result v0

    return v0
.end method

.method public final initialize()V
    .locals 2

    iget-object v0, p0, Le1/u;->b:Lx0/w;

    instance-of v1, v0, Lx0/s;

    if-eqz v1, :cond_0

    check-cast v0, Lx0/s;

    invoke-interface {v0}, Lx0/s;->initialize()V

    :cond_0
    return-void
.end method

.method public final recycle()V
    .locals 1

    iget-object v0, p0, Le1/u;->b:Lx0/w;

    invoke-interface {v0}, Lx0/w;->recycle()V

    return-void
.end method
