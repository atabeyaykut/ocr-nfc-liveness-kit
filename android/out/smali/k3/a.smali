.class public final Lk3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk3/a$a;,
        Lk3/a$b;
    }
.end annotation


# static fields
.field public static final k:Ln3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/a<",
            "Ln3/a$c$c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Lcom/google/android/gms/internal/clearcut/z3;

.field public final h:Lk3/c;

.field public final i:Lw3/a;

.field public final j:Lk3/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ln3/a$f;

    invoke-direct {v0}, Ln3/a$f;-><init>()V

    new-instance v1, Lk3/b;

    invoke-direct {v1}, Lk3/b;-><init>()V

    new-instance v2, Ln3/a;

    const-string v3, "ClearcutLogger.API"

    invoke-direct {v2, v3, v1, v0}, Ln3/a;-><init>(Ljava/lang/String;Ln3/a$a;Ln3/a$f;)V

    sput-object v2, Lk3/a;->k:Ln3/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/clearcut/i2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/clearcut/i2;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lc5/w;->h:Lc5/w;

    .line 7
    .line 8
    new-instance v2, Lcom/google/android/gms/internal/clearcut/m4;

    .line 9
    .line 10
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/clearcut/m4;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    iput v3, p0, Lk3/a;->e:I

    .line 18
    .line 19
    sget-object v4, Lcom/google/android/gms/internal/clearcut/z3;->b:Lcom/google/android/gms/internal/clearcut/z3;

    .line 20
    .line 21
    iput-object v4, p0, Lk3/a;->g:Lcom/google/android/gms/internal/clearcut/z3;

    .line 22
    .line 23
    iput-object p1, p0, Lk3/a;->a:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iput-object v5, p0, Lk3/a;->b:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v6, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget v5, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p1

    .line 48
    const-string v6, "ClearcutLogger"

    .line 49
    .line 50
    const-string v7, "This can\'t happen."

    .line 51
    .line 52
    invoke-static {v6, v7, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    :goto_0
    iput v5, p0, Lk3/a;->c:I

    .line 56
    .line 57
    iput v3, p0, Lk3/a;->e:I

    .line 58
    .line 59
    const-string p1, "VISION"

    .line 60
    .line 61
    iput-object p1, p0, Lk3/a;->d:Ljava/lang/String;

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lk3/a;->f:Ljava/lang/String;

    .line 65
    .line 66
    iput-object v0, p0, Lk3/a;->h:Lk3/c;

    .line 67
    .line 68
    iput-object v1, p0, Lk3/a;->i:Lw3/a;

    .line 69
    .line 70
    iput-object v4, p0, Lk3/a;->g:Lcom/google/android/gms/internal/clearcut/z3;

    .line 71
    .line 72
    iput-object v2, p0, Lk3/a;->j:Lk3/a$b;

    .line 73
    .line 74
    return-void
.end method
