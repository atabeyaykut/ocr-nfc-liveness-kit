.class public final Lwa/d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lma/b0;",
        "Lcc/e0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lwa/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwa/d;

    invoke-direct {v0}, Lwa/d;-><init>()V

    sput-object v0, Lwa/d;->a:Lwa/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lma/b0;

    .line 2
    .line 3
    const-string v0, "module"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lwa/c;->b:Llb/f;

    .line 9
    .line 10
    invoke-interface {p1}, Lma/b0;->m()Lja/k;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v1, Lja/o$a;->t:Llb/c;

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lja/k;->j(Llb/c;)Lma/e;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {v0, p1}, Lc5/y;->n(Llb/f;Lma/e;)Lma/a1;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-interface {p1}, Lma/z0;->getType()Lcc/e0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    if-nez p1, :cond_1

    .line 33
    .line 34
    sget-object p1, Lec/h;->F:Lec/h;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    new-array v0, v0, [Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p1, v0}, Lec/i;->c(Lec/h;[Ljava/lang/String;)Lec/f;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :cond_1
    return-object p1
.end method
