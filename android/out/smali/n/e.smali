.class public final Ln/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln/e$a;
    }
.end annotation


# instance fields
.field public final a:Ln/h;

.field public final b:Ln/e$b;


# direct methods
.method public constructor <init>(ILn/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ln/e;->a:Ln/h;

    new-instance p2, Ln/e$b;

    invoke-direct {p2, p1, p0}, Ln/e$b;-><init>(ILn/e;)V

    iput-object p2, p0, Ln/e;->b:Ln/e$b;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    iget-object v1, p0, Ln/e;->b:Ln/e$b;

    .line 4
    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/collection/LruCache;->evictAll()V

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/16 v0, 0xa

    .line 12
    .line 13
    if-gt v0, p1, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x14

    .line 16
    .line 17
    if-ge p1, v0, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    :goto_0
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/collection/LruCache;->size()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    div-int/lit8 p1, p1, 0x2

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroidx/collection/LruCache;->trimToSize(I)V

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_1
    return-void
.end method

.method public final b(Ln/b$a;)Ln/b$b;
    .locals 2

    iget-object v0, p0, Ln/e;->b:Ln/e$b;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln/e$a;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ln/b$b;

    iget-object v1, p1, Ln/e$a;->a:Landroid/graphics/Bitmap;

    iget-object p1, p1, Ln/e$a;->b:Ljava/util/Map;

    invoke-direct {v0, v1, p1}, Ln/b$b;-><init>(Landroid/graphics/Bitmap;Ljava/util/Map;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final c(Ln/b$a;Landroid/graphics/Bitmap;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/b$a;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lb8/f;->F(Landroid/graphics/Bitmap;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Ln/e;->b:Ln/e$b;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/collection/LruCache;->maxSize()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gt v0, v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Ln/e$a;

    .line 14
    .line 15
    invoke-direct {v2, p2, p3, v0}, Ln/e$a;-><init>(Landroid/graphics/Bitmap;Ljava/util/Map;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1, v2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Ln/e;->a:Ln/h;

    .line 26
    .line 27
    invoke-interface {v1, p1, p2, p3, v0}, Ln/h;->c(Ln/b$a;Landroid/graphics/Bitmap;Ljava/util/Map;I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
