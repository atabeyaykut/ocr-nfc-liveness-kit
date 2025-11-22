.class public final Lga/c0$a;
.super Lga/s$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lga/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final synthetic g:[Lda/m;
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
.field public final c:Lga/t0$a;

.field public final d:Lga/t0$a;

.field public final e:Lga/t0$b;

.field public final f:Lga/t0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lga/c0$a;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v3

    const-string v4, "kotlinClass"

    const-string v5, "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/r;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v3

    const-string v4, "scope"

    const-string v5, "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/r;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v3

    const-string v4, "multifileFacade"

    const-string v5, "getMultifileFacade()Ljava/lang/Class;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/r;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v3

    const-string v4, "metadata"

    const-string v5, "getMetadata()Lkotlin/Triple;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/r;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "members"

    const-string v4, "getMembers()Ljava/util/Collection;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lga/c0$a;->g:[Lda/m;

    return-void
.end method

.method public constructor <init>(Lga/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lga/s$a;-><init>(Lga/s;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lga/c0$a$a;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lga/c0$a$a;-><init>(Lga/c0;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lga/t0;->c(Lx9/a;)Lga/t0$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lga/c0$a;->c:Lga/t0$a;

    .line 14
    .line 15
    new-instance v0, Lga/c0$a$e;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lga/c0$a$e;-><init>(Lga/c0$a;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lga/t0;->c(Lx9/a;)Lga/t0$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lga/c0$a;->d:Lga/t0$a;

    .line 25
    .line 26
    new-instance v0, Lga/c0$a$d;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1}, Lga/c0$a$d;-><init>(Lga/c0$a;Lga/c0;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lga/t0$b;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Lga/t0$b;-><init>(Lx9/a;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lga/c0$a;->e:Lga/t0$b;

    .line 37
    .line 38
    new-instance v0, Lga/c0$a$c;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lga/c0$a$c;-><init>(Lga/c0$a;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lga/t0$b;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Lga/t0$b;-><init>(Lx9/a;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lga/c0$a;->f:Lga/t0$b;

    .line 49
    .line 50
    new-instance v0, Lga/c0$a$b;

    .line 51
    .line 52
    invoke-direct {v0, p0, p1}, Lga/c0$a$b;-><init>(Lga/c0$a;Lga/c0;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lga/t0;->c(Lx9/a;)Lga/t0$a;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static final a(Lga/c0$a;)Lra/e;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lga/c0$a;->g:[Lda/m;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    iget-object p0, p0, Lga/c0$a;->c:Lga/t0$a;

    .line 10
    .line 11
    invoke-virtual {p0}, Lga/t0$a;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lra/e;

    .line 16
    .line 17
    return-object p0
.end method
