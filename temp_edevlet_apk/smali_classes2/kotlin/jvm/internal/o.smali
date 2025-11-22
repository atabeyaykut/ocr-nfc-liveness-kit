.class public abstract Lkotlin/jvm/internal/o;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lda/k;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const-class v2, Lnc/c0;

    const-string v3, "classSimpleName"

    const-string v4, "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/s;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final computeReflected()Lda/c;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/w;->a:Lkotlin/jvm/internal/x;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/x;->e(Lkotlin/jvm/internal/o;)Lda/k;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 1

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/j$e;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j$e;->k()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
