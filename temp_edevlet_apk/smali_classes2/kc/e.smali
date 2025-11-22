.class public final Lkc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkc/e$b;
    }
.end annotation


# static fields
.field public static final a:Lkc/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkc/e$a;

    invoke-direct {v0}, Lkc/e$a;-><init>()V

    sput-object v0, Lkc/e;->a:Lkc/e$a;

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lkc/e$b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, Lkc/e$b;

    .line 6
    .line 7
    iget-object p0, p0, Lkc/e$b;->a:Ljava/lang/Throwable;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    throw p0

    .line 12
    :cond_0
    const/4 p0, 0x1

    .line 13
    invoke-static {p0}, Lkc/e$b;->a(I)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0

    .line 18
    :cond_1
    return-void
.end method
