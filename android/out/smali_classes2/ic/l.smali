.class public final Lic/l;
.super Lic/c;
.source "SourceFile"


# static fields
.field public static final a:Lic/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/l;

    invoke-direct {v0}, Lic/l;-><init>()V

    sput-object v0, Lic/l;->a:Lic/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lic/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lic/l$a;

    invoke-direct {v0}, Lic/l$a;-><init>()V

    return-object v0
.end method

.method public final l()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
