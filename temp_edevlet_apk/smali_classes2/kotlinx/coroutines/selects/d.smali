.class public final Lkotlinx/coroutines/selects/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/u;

.field public static final b:Lkotlinx/coroutines/internal/u;

.field public static final c:Lkotlinx/coroutines/internal/u;

.field public static final d:Lkotlinx/coroutines/internal/u;

.field public static final e:Lkotlinx/coroutines/selects/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "NOT_SELECTED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/selects/d;->a:Lkotlinx/coroutines/internal/u;

    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "ALREADY_SELECTED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/selects/d;->b:Lkotlinx/coroutines/internal/u;

    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "UNDECIDED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/selects/d;->c:Lkotlinx/coroutines/internal/u;

    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "RESUMED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/selects/d;->d:Lkotlinx/coroutines/internal/u;

    new-instance v0, Lkotlinx/coroutines/selects/e;

    invoke-direct {v0}, Lkotlinx/coroutines/selects/e;-><init>()V

    sput-object v0, Lkotlinx/coroutines/selects/d;->e:Lkotlinx/coroutines/selects/e;

    return-void
.end method
