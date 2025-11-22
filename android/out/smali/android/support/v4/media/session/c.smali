.class public abstract Landroid/support/v4/media/session/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/c$b;,
        Landroid/support/v4/media/session/c$a;
    }
.end annotation


# instance fields
.field public a:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/support/v4/media/session/c$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/support/v4/media/session/c$a;-><init>(Landroid/support/v4/media/session/c;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroid/support/v4/media/session/g;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroid/support/v4/media/session/g;-><init>(Landroid/support/v4/media/session/c$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    return-void
.end method
