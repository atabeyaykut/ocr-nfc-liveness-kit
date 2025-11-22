.class public final Lnc/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnc/g0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "kotlinx.coroutines.main.delay"

    .line 2
    .line 3
    sget v1, Lkotlinx/coroutines/internal/v;->a:I

    .line 4
    .line 5
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_1
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 23
    .line 24
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 25
    .line 26
    invoke-virtual {v0}, Lnc/k1;->d()Lnc/k1;

    .line 27
    .line 28
    .line 29
    instance-of v1, v0, Lnc/g0;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    :goto_2
    sget-object v0, Lnc/d0;->f:Lnc/d0;

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_2
    check-cast v0, Lnc/g0;

    .line 37
    .line 38
    :goto_3
    sput-object v0, Lnc/e0;->a:Lnc/g0;

    .line 39
    .line 40
    return-void
.end method
