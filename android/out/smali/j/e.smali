.class public final Lj/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/e$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:Lp/k;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lp/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/e;->a:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lj/e;->b:Lp/k;

    return-void
.end method


# virtual methods
.method public final a(Lp9/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Lj/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object p1, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    iget-object p1, p0, Lj/e;->a:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    instance-of v0, p1, Landroid/graphics/drawable/VectorDrawable;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    instance-of v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    new-instance v1, Lj/f;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v2, p0, Lj/e;->b:Lp/k;

    .line 22
    .line 23
    iget-object v3, v2, Lp/k;->b:Landroid/graphics/Bitmap$Config;

    .line 24
    .line 25
    iget v4, v2, Lp/k;->e:I

    .line 26
    .line 27
    iget-boolean v5, v2, Lp/k;->f:Z

    .line 28
    .line 29
    iget-object v6, v2, Lp/k;->d:Lq/e;

    .line 30
    .line 31
    invoke-static {p1, v3, v6, v4, v5}, Lu/e;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lq/e;IZ)Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v2, v2, Lp/k;->a:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 42
    .line 43
    invoke-direct {v3, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 44
    .line 45
    .line 46
    move-object p1, v3

    .line 47
    :cond_2
    const/4 v2, 0x2

    .line 48
    invoke-direct {v1, p1, v0, v2}, Lj/f;-><init>(Landroid/graphics/drawable/Drawable;ZI)V

    .line 49
    .line 50
    .line 51
    return-object v1
.end method
