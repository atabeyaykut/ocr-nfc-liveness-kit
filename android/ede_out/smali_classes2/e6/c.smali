.class public final Le6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le6/c$a;
    }
.end annotation


# static fields
.field public static final c:Le6/c$a;


# instance fields
.field public final a:La7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La7/a<",
            "Le6/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le6/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le6/c$a;

    invoke-direct {v0}, Le6/c$a;-><init>()V

    sput-object v0, Le6/c;->c:Le6/c$a;

    return-void
.end method

.method public constructor <init>(La7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La7/a<",
            "Le6/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le6/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Le6/c;->a:La7/a;

    new-instance v0, Landroidx/camera/camera2/internal/compat/workaround/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroidx/camera/camera2/internal/compat/workaround/b;-><init>(ILjava/lang/Object;)V

    check-cast p1, Lc6/x;

    invoke-virtual {p1, v0}, Lc6/x;->a(La7/a$a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Le6/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Le6/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le6/a;

    if-nez v0, :cond_0

    sget-object p1, Le6/c;->c:Le6/c$a;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Le6/a;->a(Ljava/lang/String;)Le6/e;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Le6/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le6/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le6/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;JLj6/c0;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lj6/c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "Deferring native open session: "

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const-string v2, "FirebaseCrashlytics"

    .line 9
    .line 10
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v2, v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v0, Le6/b;

    .line 21
    .line 22
    move-object v3, v0

    .line 23
    move-object v4, p1

    .line 24
    move-object v5, p2

    .line 25
    move-wide v6, p3

    .line 26
    move-object v8, p5

    .line 27
    invoke-direct/range {v3 .. v8}, Le6/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLj6/c0;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Le6/c;->a:La7/a;

    .line 31
    .line 32
    check-cast p1, Lc6/x;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lc6/x;->a(La7/a$a;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Le6/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le6/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le6/a;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
