.class public final Lm7/h;
.super Lj7/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj7/u<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lm7/h$a;


# instance fields
.field public final a:Lj7/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm7/h$a;

    invoke-direct {v0}, Lm7/h$a;-><init>()V

    sput-object v0, Lm7/h;->b:Lm7/h$a;

    return-void
.end method

.method public constructor <init>(Lj7/h;)V
    .locals 0

    invoke-direct {p0}, Lj7/u;-><init>()V

    iput-object p1, p0, Lm7/h;->a:Lj7/h;

    return-void
.end method


# virtual methods
.method public final a(Lq7/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lq7/a;->B()I

    move-result v0

    invoke-static {v0}, Lg/d;->c(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lq7/a;->s()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lq7/a;->m()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lq7/a;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lq7/a;->v()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance v0, Ll7/i;

    invoke-direct {v0}, Ll7/i;-><init>()V

    invoke-virtual {p1}, Lq7/a;->b()V

    :goto_0
    invoke-virtual {p1}, Lq7/a;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lq7/a;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lm7/h;->a(Lq7/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ll7/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lq7/a;->f()V

    return-object v0

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lq7/a;->a()V

    :goto_1
    invoke-virtual {p1}, Lq7/a;->i()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lm7/h;->a(Lq7/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lq7/a;->e()V

    return-object v0
.end method

.method public final b(Lq7/b;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lq7/b;->j()Lq7/b;

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lm7/h;->a:Lj7/h;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v2, Lp7/a;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Lp7/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lj7/h;->b(Lp7/a;)Lj7/u;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lm7/h;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lq7/b;->c()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lq7/b;->f()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-virtual {v0, p1, p2}, Lj7/u;->b(Lq7/b;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
