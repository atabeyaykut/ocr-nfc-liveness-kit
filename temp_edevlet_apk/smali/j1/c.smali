.class public final Lj1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj1/e<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final a:Ly0/c;

.field public final b:Lj1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj1/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field public final c:Lj1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj1/e<",
            "Li1/c;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly0/c;Lj1/a;Lj1/d;)V
    .locals 0
    .param p1    # Ly0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lj1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lj1/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/c;->a:Ly0/c;

    iput-object p2, p0, Lj1/c;->b:Lj1/e;

    iput-object p3, p0, Lj1/c;->c:Lj1/e;

    return-void
.end method


# virtual methods
.method public final a(Lx0/w;Lv0/h;)Lx0/w;
    .locals 2
    .param p1    # Lx0/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx0/w<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lv0/h;",
            ")",
            "Lx0/w<",
            "[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lx0/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lj1/c;->a:Ly0/c;

    invoke-static {p1, v0}, Le1/e;->b(Landroid/graphics/Bitmap;Ly0/c;)Le1/e;

    move-result-object p1

    iget-object v0, p0, Lj1/c;->b:Lj1/e;

    goto :goto_0

    :cond_0
    instance-of v0, v0, Li1/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj1/c;->c:Lj1/e;

    :goto_0
    invoke-interface {v0, p1, p2}, Lj1/e;->a(Lx0/w;Lv0/h;)Lx0/w;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
