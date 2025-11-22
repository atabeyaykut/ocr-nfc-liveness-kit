.class public final Lma/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lma/p0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lvb/i;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final e:Lma/p0$a;

.field public static final synthetic f:[Lda/m;
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
.field public final a:Lma/e;

.field public final b:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "Ldc/f;",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ldc/f;

.field public final d:Lbc/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lma/p0;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "scopeForOwnerModule"

    const-string v4, "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lma/p0;->f:[Lda/m;

    new-instance v0, Lma/p0$a;

    invoke-direct {v0}, Lma/p0$a;-><init>()V

    sput-object v0, Lma/p0;->e:Lma/p0$a;

    return-void
.end method

.method public constructor <init>(Lma/e;Lbc/l;Lx9/l;Ldc/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma/p0;->a:Lma/e;

    iput-object p3, p0, Lma/p0;->b:Lx9/l;

    iput-object p4, p0, Lma/p0;->c:Ldc/f;

    new-instance p1, Lma/p0$b;

    invoke-direct {p1, p0}, Lma/p0$b;-><init>(Lma/p0;)V

    invoke-interface {p2, p1}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p1

    iput-object p1, p0, Lma/p0;->d:Lbc/i;

    return-void
.end method


# virtual methods
.method public final a(Ldc/f;)Lvb/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc/f;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lma/p0;->a:Lma/e;

    .line 7
    .line 8
    invoke-static {v0}, Lsb/b;->j(Lma/j;)Lma/b0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Ldc/f;->u(Lma/b0;)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lma/p0;->f:[Lda/m;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    aget-object p1, p1, v0

    .line 19
    .line 20
    iget-object v0, p0, Lma/p0;->d:Lbc/i;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lvb/i;

    .line 27
    .line 28
    return-object p1
.end method
