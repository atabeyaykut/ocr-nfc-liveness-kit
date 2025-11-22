.class public final Ln/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/b;


# instance fields
.field public final a:Ln/g;

.field public final b:Ln/h;


# direct methods
.method public constructor <init>(Ln/g;Ln/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/d;->a:Ln/g;

    iput-object p2, p0, Ln/d;->b:Ln/h;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Ln/d;->a:Ln/g;

    invoke-interface {v0, p1}, Ln/g;->a(I)V

    iget-object v0, p0, Ln/d;->b:Ln/h;

    invoke-interface {v0, p1}, Ln/h;->a(I)V

    return-void
.end method

.method public final b(Ln/b$a;)Ln/b$b;
    .locals 1

    iget-object v0, p0, Ln/d;->a:Ln/g;

    invoke-interface {v0, p1}, Ln/g;->b(Ln/b$a;)Ln/b$b;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ln/d;->b:Ln/h;

    invoke-interface {v0, p1}, Ln/h;->b(Ln/b$a;)Ln/b$b;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final c(Ln/b$a;Ln/b$b;)V
    .locals 2

    .line 1
    iget-object v0, p1, Ln/b$a;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {v0}, Lc5/w;->H(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ln/b$a;

    .line 8
    .line 9
    iget-object p1, p1, Ln/b$a;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v1, p1, v0}, Ln/b$a;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p2, Ln/b$b;->b:Ljava/util/Map;

    .line 15
    .line 16
    invoke-static {p1}, Lc5/w;->H(Ljava/util/Map;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Ln/d;->a:Ln/g;

    .line 21
    .line 22
    iget-object p2, p2, Ln/b$b;->a:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    invoke-interface {v0, v1, p2, p1}, Ln/g;->c(Ln/b$a;Landroid/graphics/Bitmap;Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
