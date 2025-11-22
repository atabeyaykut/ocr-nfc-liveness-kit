.class public final Lcom/google/android/gms/internal/measurement/fb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/eb;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/w4;

.field public static final b:Lcom/google/android/gms/internal/measurement/w4;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/z4;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u4;->a()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/z4;-><init>(Landroid/net/Uri;Z)V

    .line 9
    .line 10
    .line 11
    const-string v1, "measurement.id.lifecycle.app_in_background_parameter"

    .line 12
    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/z4;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;

    .line 16
    .line 17
    .line 18
    const-string v1, "measurement.lifecycle.app_backgrounded_engagement"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/z4;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sput-object v1, Lcom/google/android/gms/internal/measurement/fb;->a:Lcom/google/android/gms/internal/measurement/w4;

    .line 25
    .line 26
    const-string v1, "measurement.lifecycle.app_backgrounded_tracking"

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/measurement/z4;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    .line 30
    .line 31
    .line 32
    const-string v1, "measurement.lifecycle.app_in_background_parameter"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/z4;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sput-object v1, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/w4;

    .line 39
    .line 40
    const-string v1, "measurement.id.lifecycle.app_backgrounded_tracking"

    .line 41
    .line 42
    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/z4;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/fb;->a:Lcom/google/android/gms/internal/measurement/w4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b5;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/w4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b5;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
