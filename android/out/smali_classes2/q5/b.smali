.class public final Lq5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq5/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lq5/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v0, Lu5/p0;->CONFIG_NAME_FIELD_NUMBER:I

    .line 7
    .line 8
    :try_start_0
    new-instance v0, Lq5/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lq5/a;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v0, v1}, Ln5/p;->e(Ln5/f;Z)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lq5/c;

    .line 18
    .line 19
    invoke-direct {v0}, Lq5/c;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ln5/p;->f(Ln5/m;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    throw v1
.end method
