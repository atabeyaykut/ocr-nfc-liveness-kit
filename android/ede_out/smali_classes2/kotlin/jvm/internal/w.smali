.class public final Lkotlin/jvm/internal/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/jvm/internal/x;

.field public static final b:[Lda/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lga/u0;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/internal/x;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lkotlin/jvm/internal/x;

    invoke-direct {v0}, Lkotlin/jvm/internal/x;-><init>()V

    :goto_1
    sput-object v0, Lkotlin/jvm/internal/w;->a:Lkotlin/jvm/internal/x;

    const/4 v0, 0x0

    new-array v0, v0, [Lda/d;

    sput-object v0, Lkotlin/jvm/internal/w;->b:[Lda/d;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lda/d;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/w;->a:Lkotlin/jvm/internal/x;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/x;->b(Ljava/lang/Class;)Lda/d;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lkotlin/jvm/internal/k;)Lda/i;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/w;->a:Lkotlin/jvm/internal/x;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/x;->d(Lkotlin/jvm/internal/k;)Lda/i;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lkotlin/jvm/internal/q;)Lda/l;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/w;->a:Lkotlin/jvm/internal/x;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/x;->f(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object p0

    return-object p0
.end method
