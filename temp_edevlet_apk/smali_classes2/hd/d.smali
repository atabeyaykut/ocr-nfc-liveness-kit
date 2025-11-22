.class public final Lhd/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Exception;

.field public c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lhd/d;->c:I

    iput-object p1, p0, Lhd/d;->d:Ljava/lang/String;

    iput-object p2, p0, Lhd/d;->e:Ljava/lang/String;

    return-void
.end method
