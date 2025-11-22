.class public final Le/k;
.super Lp9/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# instance fields
.field public final synthetic a:Le/h;


# direct methods
.method public constructor <init>(Le/h;)V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler$a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler$a;

    iput-object p1, p0, Le/k;->a:Le/h;

    invoke-direct {p0, v0}, Lp9/a;-><init>(Lp9/f$c;)V

    return-void
.end method


# virtual methods
.method public final handleException(Lp9/f;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Le/k;->a:Le/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
