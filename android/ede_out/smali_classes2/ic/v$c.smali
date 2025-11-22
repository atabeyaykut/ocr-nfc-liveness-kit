.class public final Lic/v$c;
.super Lic/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final b:Lic/v$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/v$c;

    invoke-direct {v0}, Lic/v$c;-><init>()V

    sput-object v0, Lic/v$c;->b:Lic/v$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "must have no value parameters"

    invoke-direct {p0, v0}, Lic/v;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(Lma/u;)Z
    .locals 1

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lma/a;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1
.end method
