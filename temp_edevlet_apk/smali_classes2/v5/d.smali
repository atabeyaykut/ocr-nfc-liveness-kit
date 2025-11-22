.class public final Lv5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lv5/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lv5/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lv5/b;

    .line 7
    .line 8
    invoke-direct {v0}, Lv5/b;-><init>()V

    .line 9
    .line 10
    .line 11
    sget v0, Lu5/p0;->CONFIG_NAME_FIELD_NUMBER:I

    .line 12
    .line 13
    :try_start_0
    new-instance v0, Lv5/a;

    .line 14
    .line 15
    invoke-direct {v0}, Lv5/a;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-static {v0, v1}, Ln5/p;->e(Ln5/f;Z)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lv5/b;

    .line 23
    .line 24
    invoke-direct {v0}, Lv5/b;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Ln5/p;->e(Ln5/f;Z)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lv5/g;

    .line 31
    .line 32
    invoke-direct {v0}, Lv5/g;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ln5/p;->f(Ln5/m;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v1
.end method
