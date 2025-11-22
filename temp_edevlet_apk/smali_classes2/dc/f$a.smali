.class public final Ldc/f$a;
.super Ldc/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ldc/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldc/f$a;

    invoke-direct {v0}, Ldc/f$a;-><init>()V

    sput-object v0, Ldc/f$a;->a:Ldc/f$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldc/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final r(Lfc/h;)Lcc/e0;
    .locals 1

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcc/e0;

    .line 7
    .line 8
    return-object p1
.end method

.method public final t(Llb/b;)V
    .locals 0

    return-void
.end method

.method public final u(Lma/b0;)V
    .locals 0

    return-void
.end method

.method public final v(Lma/g;)V
    .locals 1

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final w(Lma/e;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/e;",
            ")",
            "Ljava/util/Collection<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lma/g;->i()Lcc/c1;

    move-result-object p1

    invoke-interface {p1}, Lcc/c1;->l()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "classDescriptor.typeConstructor.supertypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final x(Lfc/h;)Lcc/e0;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcc/e0;

    return-object p1
.end method
