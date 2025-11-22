.class public final Li7/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li7/f$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lc6/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lc6/d<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li7/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Li7/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class p0, Li7/d;

    .line 7
    .line 8
    invoke-static {p0}, Lc6/d;->a(Ljava/lang/Class;)Lc6/d$a;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lc6/d$a;->d:I

    .line 14
    .line 15
    new-instance p1, Lc6/c;

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lc6/c;-><init>(Li7/a;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lc6/d$a;->e:Lc6/h;

    .line 21
    .line 22
    invoke-virtual {p0}, Lc6/d$a;->b()Lc6/d;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static b(Ljava/lang/String;Li7/f$a;)Lc6/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Li7/f$a<",
            "Landroid/content/Context;",
            ">;)",
            "Lc6/d<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Li7/d;

    .line 2
    .line 3
    invoke-static {v0}, Lc6/d;->a(Ljava/lang/Class;)Lc6/d$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, v0, Lc6/d$a;->d:I

    .line 9
    .line 10
    new-instance v2, Lc6/o;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const-class v4, Landroid/content/Context;

    .line 14
    .line 15
    invoke-direct {v2, v1, v3, v4}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lc6/d$a;->a(Lc6/o;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Li7/e;

    .line 22
    .line 23
    invoke-direct {v1, p0, p1}, Li7/e;-><init>(Ljava/lang/String;Li7/f$a;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Lc6/d$a;->e:Lc6/h;

    .line 27
    .line 28
    invoke-virtual {v0}, Lc6/d$a;->b()Lc6/d;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
