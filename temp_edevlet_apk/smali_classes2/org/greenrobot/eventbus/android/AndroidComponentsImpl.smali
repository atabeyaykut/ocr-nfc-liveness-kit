.class public Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;
.super Lrd/a;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lc0/c;

    const-string v1, "EventBus"

    invoke-direct {v0, v1}, Lc0/c;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lb0/a;

    invoke-direct {v1}, Lb0/a;-><init>()V

    invoke-direct {p0, v0, v1}, Lrd/a;-><init>(Lc0/c;Lb0/a;)V

    return-void
.end method
