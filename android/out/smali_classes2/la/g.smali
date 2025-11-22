.class public final Lla/g;
.super Lja/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lla/g$a;
    }
.end annotation


# static fields
.field public static final synthetic h:[Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public f:Lx9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/a<",
            "Lla/g$a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lbc/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lla/g;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "customizer"

    const-string v4, "getCustomizer()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lla/g;->h:[Lda/m;

    return-void
.end method

.method public constructor <init>(Lbc/c;)V
    .locals 2

    const-string v0, "kind"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/camera/core/impl/utils/f;->j(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lja/k;-><init>(Lbc/c;)V

    new-instance v0, Lla/i;

    invoke-direct {v0, p0, p1}, Lla/i;-><init>(Lla/g;Lbc/c;)V

    invoke-virtual {p1, v0}, Lbc/c;->d(Lx9/a;)Lbc/c$h;

    move-result-object p1

    iput-object p1, p0, Lla/g;->g:Lbc/i;

    invoke-static {v1}, Lg/d;->c(I)I

    move-result p1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lja/k;->d(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lja/k;->d(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final L()Lla/k;
    .locals 2

    sget-object v0, Lla/g;->h:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lla/g;->g:Lbc/i;

    invoke-static {v1, v0}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lla/k;

    return-object v0
.end method

.method public final e()Loa/a;
    .locals 1

    invoke-virtual {p0}, Lla/g;->L()Lla/k;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/Iterable;
    .locals 5

    .line 1
    invoke-super {p0}, Lja/k;->m()Ljava/lang/Iterable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lla/e;

    .line 6
    .line 7
    iget-object v2, p0, Lja/k;->d:Lbc/l;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lja/k;->l()Lpa/g0;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v4, "builtInsModule"

    .line 16
    .line 17
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2, v3}, Lla/e;-><init>(Lbc/l;Lpa/g0;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lm9/t;->l1(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x6

    .line 29
    invoke-static {v0}, Lja/k;->a(I)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    throw v0
.end method

.method public final p()Loa/c;
    .locals 1

    invoke-virtual {p0}, Lla/g;->L()Lla/k;

    move-result-object v0

    return-object v0
.end method
