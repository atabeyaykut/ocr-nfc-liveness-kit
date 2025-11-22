.class public final Lnc/e;
.super Lnc/o0;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, Lnc/o0;-><init>()V

    iput-object p1, p0, Lnc/e;->f:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final p()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lnc/e;->f:Ljava/lang/Thread;

    return-object v0
.end method
