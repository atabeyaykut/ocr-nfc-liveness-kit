.class public final Lnb/f;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lnb/j;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lnb/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnb/f;

    invoke-direct {v0}, Lnb/f;-><init>()V

    sput-object v0, Lnb/f;->a:Lnb/f;

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
    .locals 4

    .line 1
    check-cast p1, Lnb/j;

    .line 2
    .line 3
    const-string v0, "$this$withOptions"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lnb/j;->l()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x2

    .line 13
    new-array v1, v1, [Llb/c;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    sget-object v3, Lja/o$a;->p:Llb/c;

    .line 17
    .line 18
    aput-object v3, v1, v2

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    sget-object v3, Lja/o$a;->q:Llb/c;

    .line 22
    .line 23
    aput-object v3, v1, v2

    .line 24
    .line 25
    invoke-static {v1}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Iterable;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lm9/g0;->F(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {p1, v0}, Lnb/j;->h(Ljava/util/LinkedHashSet;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 39
    .line 40
    return-object p1
.end method
