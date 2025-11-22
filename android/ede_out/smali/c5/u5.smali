.class public final Lc5/u5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/y0;

.field public final synthetic b:Lc5/s;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/y0;Lc5/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc5/u5;->d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lc5/u5;->a:Lcom/google/android/gms/internal/measurement/y0;

    iput-object p3, p0, Lc5/u5;->b:Lc5/s;

    iput-object p4, p0, Lc5/u5;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc5/u5;->d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 4
    .line 5
    invoke-virtual {v0}, Lc5/i4;->s()Lc5/t6;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lc5/r3;->c()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 16
    .line 17
    check-cast v1, Lc5/i4;

    .line 18
    .line 19
    iget-object v2, v1, Lc5/i4;->m:Lc5/v7;

    .line 20
    .line 21
    invoke-static {v2}, Lc5/i4;->c(Lc5/y4;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-object v3, Lm3/f;->b:Lm3/f;

    .line 28
    .line 29
    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    .line 30
    .line 31
    check-cast v2, Lc5/i4;

    .line 32
    .line 33
    iget-object v2, v2, Lc5/i4;->a:Landroid/content/Context;

    .line 34
    .line 35
    const v4, 0xbdfcb8

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4, v2}, Lm3/f;->c(ILandroid/content/Context;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v3, p0, Lc5/u5;->a:Lcom/google/android/gms/internal/measurement/y0;

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    iget-object v0, v1, Lc5/i4;->j:Lc5/e3;

    .line 47
    .line 48
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 49
    .line 50
    .line 51
    const-string v2, "Not bundling data. Service unavailable or out of date"

    .line 52
    .line 53
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v1, Lc5/i4;->m:Lc5/v7;

    .line 59
    .line 60
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 61
    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    new-array v1, v1, [B

    .line 65
    .line 66
    invoke-virtual {v0, v3, v1}, Lc5/v7;->B(Lcom/google/android/gms/internal/measurement/y0;[B)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance v1, Lc5/n5;

    .line 71
    .line 72
    iget-object v2, p0, Lc5/u5;->b:Lc5/s;

    .line 73
    .line 74
    iget-object v4, p0, Lc5/u5;->c:Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v1, v0, v2, v4, v3}, Lc5/n5;-><init>(Lc5/t6;Lc5/s;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/y0;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lc5/t6;->t(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method
