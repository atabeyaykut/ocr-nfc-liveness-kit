.class public final Ldb/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ldb/h;


# instance fields
.field public final a:Ldb/k;

.field public final b:Ldb/i;

.field public final c:Z

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ldb/h;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldb/h;-><init>(Ldb/k;Z)V

    sput-object v0, Ldb/h;->e:Ldb/h;

    return-void
.end method

.method public constructor <init>(Ldb/k;Ldb/i;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldb/h;->a:Ldb/k;

    iput-object p2, p0, Ldb/h;->b:Ldb/i;

    iput-boolean p3, p0, Ldb/h;->c:Z

    iput-boolean p4, p0, Ldb/h;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Ldb/k;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Ldb/h;-><init>(Ldb/k;Ldb/i;ZZ)V

    return-void
.end method
