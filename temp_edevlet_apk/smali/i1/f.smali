.class public final Li1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv0/l<",
        "Li1/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lv0/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv0/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv0/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv0/l<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lq1/l;->b(Ljava/lang/Object;)V

    iput-object p1, p0, Li1/f;->b:Lv0/l;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 1
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Li1/f;->b:Lv0/l;

    invoke-interface {v0, p1}, Lv0/f;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public final b(Lcom/bumptech/glide/h;Lx0/w;II)Lx0/w;
    .locals 4
    .param p1    # Lcom/bumptech/glide/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lx0/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-interface {p2}, Lx0/w;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Li1/c;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/bumptech/glide/b;->a:Ly0/c;

    .line 12
    .line 13
    iget-object v2, v0, Li1/c;->a:Li1/c$a;

    .line 14
    .line 15
    iget-object v2, v2, Li1/c$a;->a:Li1/g;

    .line 16
    .line 17
    iget-object v2, v2, Li1/g;->l:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    new-instance v3, Le1/e;

    .line 20
    .line 21
    invoke-direct {v3, v2, v1}, Le1/e;-><init>(Landroid/graphics/Bitmap;Ly0/c;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Li1/f;->b:Lv0/l;

    .line 25
    .line 26
    invoke-interface {v1, p1, v3, p3, p4}, Lv0/l;->b(Lcom/bumptech/glide/h;Lx0/w;II)Lx0/w;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-nez p3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3}, Le1/e;->recycle()V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-interface {p1}, Lx0/w;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/graphics/Bitmap;

    .line 44
    .line 45
    iget-object p3, v0, Li1/c;->a:Li1/c$a;

    .line 46
    .line 47
    iget-object p3, p3, Li1/c$a;->a:Li1/g;

    .line 48
    .line 49
    invoke-virtual {p3, v1, p1}, Li1/g;->c(Lv0/l;Landroid/graphics/Bitmap;)V

    .line 50
    .line 51
    .line 52
    return-object p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Li1/f;

    if-eqz v0, :cond_0

    check-cast p1, Li1/f;

    iget-object v0, p0, Li1/f;->b:Lv0/l;

    iget-object p1, p1, Li1/f;->b:Lv0/l;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Li1/f;->b:Lv0/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
