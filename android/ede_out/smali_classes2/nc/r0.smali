.class public abstract Lnc/r0;
.super Lnc/y;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lnc/y;->Key:Lnc/y$a;

    .line 2
    .line 3
    const-string v1, "baseKey"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "safeCast"

    .line 9
    .line 10
    sget-object v1, Lnc/q0;->a:Lnc/q0;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnc/y;-><init>()V

    return-void
.end method
