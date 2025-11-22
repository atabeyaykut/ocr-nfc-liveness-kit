.class public final Lj/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Lp/k;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lp/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/b;->a:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lj/b;->b:Lp/k;

    return-void
.end method


# virtual methods
.method public final a(Lp9/d;)Ljava/lang/Object;
    .locals 3
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
    new-instance p1, Lj/f;

    .line 2
    .line 3
    iget-object v0, p0, Lj/b;->b:Lp/k;

    .line 4
    .line 5
    iget-object v0, v0, Lp/k;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 12
    .line 13
    iget-object v2, p0, Lj/b;->a:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {p1, v1, v2, v0}, Lj/f;-><init>(Landroid/graphics/drawable/Drawable;ZI)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method
