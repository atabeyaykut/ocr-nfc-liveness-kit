.class public final Lm7/n;
.super Lj7/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj7/u<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lj7/h;

.field public final b:Lj7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj7/u<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lj7/h;Lj7/u;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj7/h;",
            "Lj7/u<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lj7/u;-><init>()V

    iput-object p1, p0, Lm7/n;->a:Lj7/h;

    iput-object p2, p0, Lm7/n;->b:Lj7/u;

    iput-object p3, p0, Lm7/n;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a(Lq7/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm7/n;->b:Lj7/u;

    invoke-virtual {v0, p1}, Lj7/u;->a(Lq7/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lq7/b;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/b;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/n;->c:Ljava/lang/reflect/Type;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    const-class v1, Ljava/lang/Object;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    instance-of v1, v0, Ljava/lang/Class;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v1, v0

    .line 23
    :goto_0
    iget-object v2, p0, Lm7/n;->b:Lj7/u;

    .line 24
    .line 25
    if-eq v1, v0, :cond_4

    .line 26
    .line 27
    new-instance v0, Lp7/a;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lp7/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lm7/n;->a:Lj7/h;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lj7/h;->b(Lp7/a;)Lj7/u;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    instance-of v1, v0, Lm7/j$a;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    instance-of v1, v2, Lm7/j$a;

    .line 44
    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    :goto_1
    move-object v2, v0

    .line 49
    :cond_4
    :goto_2
    invoke-virtual {v2, p1, p2}, Lj7/u;->b(Lq7/b;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
