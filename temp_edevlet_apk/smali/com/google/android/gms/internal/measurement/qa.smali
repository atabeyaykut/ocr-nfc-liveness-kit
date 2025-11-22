.class public final Lcom/google/android/gms/internal/measurement/qa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/pa;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/w4;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

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
    const-string v1, "measurement.client.sessions.check_on_reset_and_enable2"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/z4;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Lcom/google/android/gms/internal/measurement/qa;->a:Lcom/google/android/gms/internal/measurement/w4;

    .line 19
    .line 20
    const-string v1, "measurement.client.sessions.check_on_startup"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/z4;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    .line 23
    .line 24
    .line 25
    const-string v1, "measurement.client.sessions.start_session_before_view_screen"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/z4;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/qa;->a:Lcom/google/android/gms/internal/measurement/w4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b5;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
